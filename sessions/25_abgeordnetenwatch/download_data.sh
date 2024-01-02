curl "https://www.abgeordnetenwatch.de/api/v2/polls?field_legislature=111&range_end=1000" >polls.json

for p in $(jq ".data[].id" polls.json)
do
	curl "https://www.abgeordnetenwatch.de/api/v2/votes?poll=$p&range_end=1000" >votes/$p.json
	sleep 1
done
