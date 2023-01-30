.class Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$CallLogDeleteBlockedCallQuery;
.super Ljava/lang/Object;
.source "DeleteBlockedCallTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogDeleteBlockedCallQuery"
.end annotation


# static fields
.field static final DATE_COLUMN_INDEX:I = 0x1

.field static final ID_COLUMN_INDEX:I

.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "date"

    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$CallLogDeleteBlockedCallQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
