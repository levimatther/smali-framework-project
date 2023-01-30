.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdatedContactQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECT_UPDATED_CLAUSE:Ljava/lang/String; = "contact_last_updated_timestamp > ?"

.field public static final UPDATED_CONTACT_ID:I

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1079
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->URI:Landroid/net/Uri;

    const-string v0, "_id"

    .line 1081
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
