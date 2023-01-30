.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PHONE_CARRIER_PRESENCE:I = 0xe

.field public static final PHONE_CONTACT_ID:I = 0x4

.field public static final PHONE_DISPLAY_NAME:I = 0x6

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_IN_VISIBLE_GROUP:I = 0xc

.field public static final PHONE_IS_PRIMARY:I = 0xd

.field public static final PHONE_IS_SUPER_PRIMARY:I = 0xb

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_LAST_TIME_USED:I = 0x8

.field public static final PHONE_LOOKUP_KEY:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_PHOTO_ID:I = 0x7

.field public static final PHONE_STARRED:I = 0xa

.field public static final PHONE_TIMES_USED:I = 0x9

.field public static final PHONE_TYPE:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "contact_last_updated_timestamp > ? AND length(lookup) < 1000"

.field public static final SELECT_IGNORE_LOOKUP_KEY_TOO_LONG_CLAUSE:Ljava/lang/String; = "length(lookup) < 1000"

.field public static final SELECT_UPDATED_CLAUSE:Ljava/lang/String; = "contact_last_updated_timestamp > ?"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1016
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 1018
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1020
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "directory"

    .line 1019
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_entries"

    const-string/jumbo v2, "true"

    .line 1021
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "data2"

    const-string v3, "data3"

    const-string v4, "data1"

    const-string v5, "contact_id"

    const-string v6, "lookup"

    const-string v7, "display_name"

    const-string v8, "photo_id"

    const-string v9, "last_time_used"

    const-string v10, "times_used"

    const-string v11, "starred"

    const-string v12, "is_super_primary"

    const-string v13, "in_visible_group"

    const-string v14, "is_primary"

    const-string v15, "carrier_presence"

    .line 1024
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
