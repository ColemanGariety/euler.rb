require_relative "shared"

nth = 10001
candidate = 1
found = 0

until found == nth do
  candidate += 1
  found += 1 if Shared.prime_by_trial_division?(candidate)
end

p candidate
