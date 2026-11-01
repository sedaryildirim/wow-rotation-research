# Client compatibility checklist

Initial access assumption: normal WoW: Forever client and addon interface only. No server-side telemetry.

For each observation, record:
- Client build/version
- Interface version
- API/event name and official/documented source
- Test procedure
- Result: available / unavailable / restricted / unknown
- Whether the value is safe and permitted to consume
- Notes and reproduction steps

Do not use pixel scraping, memory inspection, protected API workarounds, or other methods to reconstruct information the client intentionally withholds. Unknown means unknown; do not silently substitute a guess.
