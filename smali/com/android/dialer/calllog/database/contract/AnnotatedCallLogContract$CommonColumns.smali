.class interface abstract Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CommonColumns;
.super Ljava/lang/Object;
.source "AnnotatedCallLogContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CommonColumns"
.end annotation


# static fields
.field public static final ALL_COMMON_COLUMNS:[Ljava/lang/String;

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "timestamp"

    const-string v2, "contact_name"

    .line 51
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CommonColumns;->ALL_COMMON_COLUMNS:[Ljava/lang/String;

    return-void
.end method
