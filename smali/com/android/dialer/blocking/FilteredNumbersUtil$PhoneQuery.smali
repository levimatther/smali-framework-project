.class public Lcom/android/dialer/blocking/FilteredNumbersUtil$PhoneQuery;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/FilteredNumbersUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final NORMALIZED_NUMBER_COLUMN_INDEX:I = 0x1

.field public static final NUMBER_COLUMN_INDEX:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECT_SEND_TO_VOICEMAIL_TRUE:Ljava/lang/String; = "send_to_voicemail=1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "data4"

    const-string v2, "data1"

    .line 341
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/blocking/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
