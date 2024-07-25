/*
  Warnings:

  - Added the required column `name` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "labels" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "labels_id_seq";

-- AlterTable
ALTER TABLE "projects" ALTER COLUMN "name" SET DEFAULT 'Nombre_proyecto';

-- AlterTable
ALTER TABLE "roles" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "roles_id_seq";

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "name" TEXT NOT NULL,
ALTER COLUMN "user_role_id" SET DEFAULT 0,
ALTER COLUMN "is_active" SET DEFAULT true;
