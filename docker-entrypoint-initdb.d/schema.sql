-- companies info
CREATE TABLE companies (
    company_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    company_name text NOT NULL UNIQUE
);

-- job listing info
CREATE TABLE listings (
    listing_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    job_title text NOT NULL,

    source text NOT NULL
        CONSTRAINT possible_sources_constraint 
        CHECK (source in ('quera', 'jobvision', 'jobinja')),
    external_id text NOT NULL,
    UNIQUE (source, external_id),

    seniority text
        CONSTRAINT seniority_level_check
        CHECK (seniority IN ('intern', 'junior', 'mid-level', 'senior', 'lead')),

    work_time text
        CONSTRAINT work_time_check
        CHECK (work_time IN ('part-time', 'full-time')),

    presence text
        CONSTRAINT presence_type_check
        CHECK (presence IN ('in-person', 'hybrid', 'remote')),

    first_seen timestamptz NOT NULL DEFAULT now(),
    last_seen timestamptz NOT NULL DEFAULT now(),
    url text NOT NULL,

    city text NOT NULL,
    company_id int NOT NULL REFERENCES companies(company_id)
);

-- skills and categories
CREATE TABLE skills (
    skill_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    skill_name text NOT NULL UNIQUE,

    category text NOT NULL
        CONSTRAINT skill_type_check 
        CHECK (category IN (
            'language',
            'framework',
            'library',
            'database',
            'tool',
            'platform',
            'methodology'
        ))
);

-- skills on each listing
CREATE TABLE listing_skills (
    listing_id int NOT NULL 
        REFERENCES listings(listing_id)
        ON DELETE CASCADE,

    skill_id int NOT NULL 
        REFERENCES skills(skill_id),

    PRIMARY KEY (listing_id, skill_id) 
);
