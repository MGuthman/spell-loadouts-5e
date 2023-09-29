CREATE TABLE "loadouts" (
  "id" uuid PRIMARY KEY,
  "user_id" integer,
  "name" varchar
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "password" varchar
);

CREATE TABLE "loadout_spells" (
  "id" integer PRIMARY KEY,
  "loadout_id" uuid,
  "spell_id" uuid
);

CREATE TABLE "spells" (
  "id" uuid PRIMARY KEY,
  "name" varchar(200)
);

ALTER TABLE "loadouts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "loadout_spells" ADD FOREIGN KEY ("loadout_id") REFERENCES "loadouts" ("id");

ALTER TABLE "loadout_spells" ADD FOREIGN KEY ("spell_id") REFERENCES "spells" ("id");
