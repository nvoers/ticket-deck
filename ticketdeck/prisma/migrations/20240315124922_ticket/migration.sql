/*
  Warnings:

  - Made the column `userId` on table `Ticket` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Ticket" ALTER COLUMN "userId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
