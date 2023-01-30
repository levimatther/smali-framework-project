.class public Ltct/gpdatahub/sdk/db/SQLParaWrapper;
.super Ljava/lang/Object;
.source "SQLParaWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLParaWrapper"


# instance fields
.field private DBVersion:I

.field private appDBHelper:Ltct/gpdatahub/sdk/db/DatabaseHelper;

.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SQLParaWrapper: "

    const-string v1, "SQLParaWrapper"

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x5

    .line 23
    iput v2, p0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->DBVersion:I

    .line 30
    new-instance v2, Ltct/gpdatahub/sdk/db/DatabaseHelper;

    iget v3, p0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->DBVersion:I

    const-string v4, "tctdatahub.db"

    const/4 v5, 0x0

    invoke-direct {v2, p1, v4, v5, v3}, Ltct/gpdatahub/sdk/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->appDBHelper:Ltct/gpdatahub/sdk/db/DatabaseHelper;

    .line 32
    :try_start_0
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 41
    iget-object v0, p0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
