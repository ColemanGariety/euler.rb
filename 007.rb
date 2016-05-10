require_relative "shared"
include Shared

nth = 10001
candidate = 1
found = 0

until found == nth do
  candidate += 1
  found += 1 if prime_by_trial_division?(candidate)
end

p candidate
