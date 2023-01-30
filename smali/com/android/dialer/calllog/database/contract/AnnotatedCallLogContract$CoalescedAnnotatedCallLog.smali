.class public final Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;
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
    name = "CoalescedAnnotatedCallLog"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final COLUMNS_ONLY_IN_COALESCED_CALL_LOG:[Ljava/lang/String;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/coalesced_annotated_call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final NUMBER_CALLS:Ljava/lang/String; = "number_calls"

.field public static final TABLE:Ljava/lang/String; = "CoalescedAnnotatedCallLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    sget-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "CoalescedAnnotatedCallLog"

    .line 97
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "number_calls"

    const-string v1, "formatted_number"

    .line 122
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->COLUMNS_ONLY_IN_COALESCED_CALL_LOG:[Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->ALL_COMMON_COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->COLUMNS_ONLY_IN_COALESCED_CALL_LOG:[Ljava/lang/String;

    .line 127
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->access$000([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
