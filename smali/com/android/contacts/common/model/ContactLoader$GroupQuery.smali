.class Lcom/android/contacts/common/model/ContactLoader$GroupQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final AUTO_ADD:I = 0x5

.field static final COLUMNS:[Ljava/lang/String;

.field public static final DATA_SET:I = 0x2

.field public static final FAVORITES:I = 0x6

.field public static final ID:I = 0x3

.field public static final TITLE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "_id"

    const-string v4, "title"

    const-string v5, "auto_add"

    const-string v6, "favorites"

    .line 958
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
