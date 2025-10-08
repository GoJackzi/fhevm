-- Add otlp_context fields in every tables
-- The default value corresponds to a serialized empty `PropagationContext`k
ALTER TABLE public_decryption_requests ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE user_decryption_requests ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE prep_keygen_requests ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE keygen_requests ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE crsgen_requests ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;

ALTER TABLE public_decryption_responses ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE user_decryption_responses ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE prep_keygen_responses ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE keygen_responses ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
ALTER TABLE crsgen_responses ADD COLUMN otlp_context BYTEA NOT NULL DEFAULT "\x0000000000000000"::BYTEA;
