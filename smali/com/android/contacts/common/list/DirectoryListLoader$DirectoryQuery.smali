.class final Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final DISPLAY_NAME:I = 0x3

.field public static final ID:I = 0x0

.field public static final ORDER_BY:Ljava/lang/String; = "_id"

.field public static final PACKAGE_NAME:I = 0x1

.field public static final PHOTO_SUPPORT:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TYPE_RESOURCE_ID:I = 0x2

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 193
    invoke-static {}, Lcom/android/contacts/common/compat/DirectoryCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "packageName"

    const-string/jumbo v2, "typeResourceId"

    const-string v3, "displayName"

    const-string v4, "photoSupport"

    .line 196
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
