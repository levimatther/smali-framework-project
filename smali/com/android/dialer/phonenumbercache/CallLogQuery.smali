.class public final Lcom/android/dialer/phonenumbercache/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final ACCOUNT_COMPONENT_NAME:I = 0x12

.field public static final ACCOUNT_ID:I = 0x13

.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field public static final CACHED_PHOTO_URI:I = 0x17

.field public static final CALL_TYPE:I = 0x4

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATA_USAGE:I = 0x15

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final FEATURES:I = 0x14

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x10

.field public static final NUMBER:I = 0x1

.field public static final NUMBER_PRESENTATION:I = 0x11

.field public static final POST_DIAL_DIGITS:I = 0x18

.field private static final PROJECTION_M:[Ljava/lang/String;

.field private static final PROJECTION_N:[Ljava/lang/String;

.field public static final TRANSCRIPTION:I = 0x16

.field public static final VIA_NUMBER:I = 0x19

.field public static final VOICEMAIL_URI:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "_id"

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "duration"

    const-string/jumbo v4, "type"

    const-string v5, "countryiso"

    const-string/jumbo v6, "voicemail_uri"

    const-string v7, "geocoded_location"

    const-string v8, "name"

    const-string v9, "numbertype"

    const-string v10, "numberlabel"

    const-string v11, "lookup_uri"

    const-string v12, "matched_number"

    const-string v13, "normalized_number"

    const-string v14, "photo_id"

    const-string v15, "formatted_number"

    const-string v16, "is_read"

    const-string v17, "presentation"

    const-string v18, "subscription_component_name"

    const-string v19, "subscription_id"

    const-string v20, "features"

    const-string v21, "data_usage"

    const-string/jumbo v22, "transcription"

    const-string v23, "photo_uri"

    .line 63
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/phonenumbercache/CallLogQuery;->PROJECTION_M:[Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/dialer/phonenumbercache/CallLogQuery;->PROJECTION_M:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "post_dial_digits"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "via_number"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/phonenumbercache/CallLogQuery;->PROJECTION_N:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 2

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/android/dialer/phonenumbercache/CallLogQuery;->PROJECTION_N:[Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    sget-object v0, Lcom/android/dialer/phonenumbercache/CallLogQuery;->PROJECTION_M:[Ljava/lang/String;

    return-object v0
.end method
