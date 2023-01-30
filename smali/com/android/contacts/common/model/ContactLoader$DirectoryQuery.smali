.class Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x4

.field public static final ACCOUNT_TYPE:I = 0x3

.field static final COLUMNS:[Ljava/lang/String;

.field public static final DISPLAY_NAME:I = 0x0

.field public static final EXPORT_SUPPORT:I = 0x5

.field public static final PACKAGE_NAME:I = 0x1

.field public static final TYPE_RESOURCE_ID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "displayName"

    const-string v1, "packageName"

    const-string/jumbo v2, "typeResourceId"

    const-string v3, "accountType"

    const-string v4, "accountName"

    const-string v5, "exportSupport"

    .line 938
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
