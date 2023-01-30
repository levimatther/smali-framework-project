.class Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnnotatedCallLogDatabaseHelper.java"


# static fields
.field private static final CREATE_TABLE_SQL:Ljava/lang/String;

.field private static final CREATE_TRIGGER_SQL:Ljava/lang/String; = "create trigger delete_old_rows after insert on AnnotatedCallLog when (select count(*) from AnnotatedCallLog) > %d begin delete from AnnotatedCallLog where _id in (select _id from AnnotatedCallLog order by timestamp limit (select count(*)-%d from AnnotatedCallLog )); end;"


# instance fields
.field private final maxRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create table if not exists AnnotatedCallLog ("

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id integer primary key, "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp integer, "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contact_name string, "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "number blob"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->CREATE_TABLE_SQL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "annotated_call_log.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    iput p2, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->maxRows:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "AnnotatedCallLogDatabaseHelper.onCreate"

    .line 67
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 69
    sget-object v3, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->CREATE_TABLE_SQL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->maxRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->maxRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "create trigger delete_old_rows after insert on AnnotatedCallLog when (select count(*) from AnnotatedCallLog) > %d begin delete from AnnotatedCallLog where _id in (select _id from AnnotatedCallLog order by timestamp limit (select count(*)-%d from AnnotatedCallLog )); end;"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array p1, v7, [Ljava/lang/Object;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v6

    const-string v1, "took: %dms"

    .line 72
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
