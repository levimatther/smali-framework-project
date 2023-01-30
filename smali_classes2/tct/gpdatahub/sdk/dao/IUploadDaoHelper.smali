.class interface abstract Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;
.super Ljava/lang/Object;
.source "IUploadDaoHelper.java"


# virtual methods
.method public abstract deleteUpload()V
.end method

.method public abstract deleteUploadByDay(Ljava/lang/String;)I
.end method

.method public abstract deleteUploadById(JJ)I
.end method

.method public abstract getAllUploadCursor()Landroid/database/Cursor;
.end method

.method public abstract getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getFailedUploadCursor()Landroid/database/Cursor;
.end method

.method public abstract getLatestUploadCursor(I)Landroid/database/Cursor;
.end method

.method public abstract getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
.end method

.method public abstract getSuccessUploadCursor()Landroid/database/Cursor;
.end method

.method public abstract getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract insertUpload(Landroid/content/ContentValues;)V
.end method

.method public abstract insertUploadRecordByStartId(JIIZLjava/lang/String;)V
.end method

.method public abstract queryTaskFlagByStartId(J)Landroid/database/Cursor;
.end method

.method public abstract queryUploadByStartId(J)Landroid/database/Cursor;
.end method

.method public abstract queryUploadFlagByDate(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryUploadProcessByDate(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract updateUpload(Landroid/content/ContentValues;)V
.end method

.method public abstract updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract updateUploadByStartId(Landroid/content/ContentValues;J)V
.end method
