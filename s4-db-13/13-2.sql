USE [E_Univer]
GO
/****** Object:  StoredProcedure [dbo].[psubject]    Script Date: 04.06.2021 2:49:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[psubject] @p char(40) = NULL, @c int output
as
begin 

	declare @subj char(7), @subjName varchar(20), @pulp char(6); 
	declare @mess varchar(2000), @num int = 0;
	
	select @subj = 'Код', @subjName = 'Дисциплина', @pulp = 'Кафедра'; 
	set @mess = @subj + ' ' + @subjname + ' ' + @pulp;

	set @c = 0;

	open task131

		fetch task131 into @subj, @subjName, @pulp;
		while @@FETCH_STATUS = 0
			begin 
				
				if @pulp = @p
					begin
						set @mess = @mess + char(13) + @subj + ' ' + @subjName + ' ' + @pulp;
						set @c = @c + 1;
					end 

				set @num = @num + 1;
				fetch task131 into @subj, @subjName, @pulp;
			end
	close task131

	print @mess;
	return @num;
end

