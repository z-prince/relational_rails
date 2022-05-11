CREATE TABLE "public.Authors" (
	"id" serial NOT NULL,
	"created_at" DATETIME NOT NULL,
	"updated_at" DATETIME NOT NULL,
	"living" BOOLEAN NOT NULL,
	"pullitzer_prizes" integer NOT NULL,
	"name" VARCHAR(255) NOT NULL,
	CONSTRAINT "Authors_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Books" (
	"id" integer NOT NULL,
	"author_id" integer NOT NULL,
	"created_at" DATETIME NOT NULL,
	"updated_at" DATETIME NOT NULL,
	"fictitious" BOOLEAN NOT NULL,
	"pages" integer NOT NULL,
	"name" VARCHAR(255) NOT NULL,
	"genre" VARCHAR(255) NOT NULL,
	CONSTRAINT "Books_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Books" ADD CONSTRAINT "Books_fk0" FOREIGN KEY ("author_id") REFERENCES "Authors"("id");



