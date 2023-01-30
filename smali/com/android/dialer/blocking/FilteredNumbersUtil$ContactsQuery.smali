.class Lcom/android/dialer/blocking/FilteredNumbersUtil$ContactsQuery;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/FilteredNumbersUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsQuery"
.end annotation


# static fields
.field static final ID_COLUMN_INDEX:I = 0x0

.field static final PROJECTION:[Ljava/lang/String;

.field static final SELECT_SEND_TO_VOICEMAIL_TRUE:Ljava/lang/String; = "send_to_voicemail=1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_id"

    .line 332
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/blocking/FilteredNumbersUtil$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
