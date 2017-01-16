drop table if exists frequencies;

-- Make a histogram of the target table, counting how many times each label occurs.
create table frequencies
    -- The new table will have whatever columns we select here.
    select
        -- Pass label into the temporary table.
        label,
        -- Count how many rows have this label.
        count(*) as frequency
    from targets
    group by
        label;

-- Show top ten items by frequency.
select
    label,
    frequency
from frequencies
order by
    -- Order descending, so that highest frequency comes first.
    frequency desc
-- Only show the top ten items.
limit 10;
