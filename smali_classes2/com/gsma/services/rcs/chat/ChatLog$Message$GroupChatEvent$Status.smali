.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
.super Ljava/lang/Enum;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum ADMIN:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum DEPARTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum ICON:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum JOINED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum JOIN_FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum SUBJECT:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 645
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "JOINED"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->JOINED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 650
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "DEPARTED"

    const/4 v3, 0x1

    const/16 v4, 0x65

    invoke-direct {v0, v1, v3, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->DEPARTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 655
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "ADMIN"

    const/4 v4, 0x2

    const/16 v5, 0x66

    invoke-direct {v0, v1, v4, v5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->ADMIN:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 660
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "SUBJECT"

    const/4 v5, 0x3

    const/16 v6, 0x67

    invoke-direct {v0, v1, v5, v6}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->SUBJECT:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 665
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "ICON"

    const/4 v6, 0x4

    const/16 v7, 0x68

    invoke-direct {v0, v1, v6, v7}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->ICON:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 670
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "JOIN_FAILED"

    const/4 v7, 0x5

    const/16 v8, 0x69

    invoke-direct {v0, v1, v7, v8}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->JOIN_FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 640
    sget-object v8, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->JOINED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v8, v1, v2

    sget-object v8, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->DEPARTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v8, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->ADMIN:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->SUBJECT:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->ICON:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 675
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    .line 678
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 679
    sget-object v4, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 683
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 684
    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .locals 3

    .line 692
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    if-eqz v0, :cond_0

    return-object v0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 697
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .locals 1

    .line 640
    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .locals 1

    .line 640
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValue:I

    return v0
.end method
