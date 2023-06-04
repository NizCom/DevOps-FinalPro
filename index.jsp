Object mainForumRecords=request.getAttribute("mainForumRecords");

    if(mainForumRecords instanceof ArrayList)
    {

        Iterator<MainForumRecordBean> recordIterator=((ArrayList<MainForumRecordBean>)mainForumRecords).listIterator();
        while(recordIterator.hasNext())
        {
            out.println("<tr>");
            MainForumRecordBean record=recordIterator.next();
            {
                MainForumRecordBean mainForumRecord=(MainForumRecordBean)record;
                out.print("<td>");
                out.print(mainForumRecord.getMainPostId());
                out.print("</td>");
                out.print("<td>");
                out.print(mainForumRecord.getPostHeading());
                out.print("</td>");
                out.print("<td>");
                out.print(mainForumRecord.getPostText());
                out.print("</td>");
                out.print("<td>");
                out.print(mainForumRecord.getAuthorId());
                out.print("</td>");
                out.print("<td>");
                out.print(mainForumRecord.getTimeStamp());
                out.print("</td>");
            }
            out.println("</tr>");
        }
