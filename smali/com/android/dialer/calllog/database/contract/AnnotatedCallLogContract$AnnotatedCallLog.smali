.class public final Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;
.super Ljava/lang/Object;
.source "AnnotatedCallLogContract.java"

# interfaces
.implements Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotatedCallLog"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/annotated_call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final TABLE:Ljava/lang/String; = "AnnotatedCallLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    sget-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "AnnotatedCallLog"

    .line 65
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
