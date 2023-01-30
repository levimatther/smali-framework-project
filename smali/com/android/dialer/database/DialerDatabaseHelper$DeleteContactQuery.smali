.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteContactQuery"
.end annotation


# static fields
.field public static final DELETED_CONTACT_ID:I = 0x0

.field public static final DELETED_TIMESTAMP:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SELECT_UPDATED_CLAUSE:Ljava/lang/String; = "contact_deleted_timestamp > ?"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1095
    sget-object v0, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    const-string v0, "contact_id"

    const-string v1, "contact_deleted_timestamp"

    .line 1097
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
