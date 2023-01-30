.class public Lcom/android/dialer/searchfragment/common/Projections;
.super Ljava/lang/Object;
.source "Projections.java"


# static fields
.field public static final PHONE_CARRIER_PRESENCE:I = 0x8

.field public static final PHONE_DISPLAY_NAME:I = 0x4

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_LOOKUP_KEY:I = 0x7

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_PHOTO_ID:I = 0x5

.field public static final PHONE_PHOTO_URI:I = 0x6

.field public static final PHONE_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_SORT_KEY:I = 0x9

.field public static final PHONE_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "_id"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data1"

    const-string v4, "display_name"

    const-string v5, "photo_id"

    const-string v6, "photo_thumb_uri"

    const-string v7, "lookup"

    const-string v8, "carrier_presence"

    const-string v9, "sort_key"

    .line 37
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/searchfragment/common/Projections;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
