.class public final enum Lcom/tct/cs/services/rcs/chatbot/UserEvent;
.super Ljava/lang/Enum;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tct/cs/services/rcs/chatbot/UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tct/cs/services/rcs/chatbot/UserEvent;

.field public static final enum SPAM_SENDER:Lcom/tct/cs/services/rcs/chatbot/UserEvent;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tct/cs/services/rcs/chatbot/UserEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    const-string v1, "SPAM_SENDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tct/cs/services/rcs/chatbot/UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->SPAM_SENDER:Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    aput-object v0, v1, v2

    .line 10
    sput-object v1, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    .line 17
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->values()[Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 18
    sget-object v4, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->toInt()I

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->mValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/tct/cs/services/rcs/chatbot/UserEvent;
    .locals 3

    .line 42
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/tct/cs/services/rcs/chatbot/UserEvent;

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

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/UserEvent;
    .locals 1

    .line 10
    const-class v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    return-object p0
.end method

.method public static values()[Lcom/tct/cs/services/rcs/chatbot/UserEvent;
    .locals 1

    .line 10
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    invoke-virtual {v0}, [Lcom/tct/cs/services/rcs/chatbot/UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->mValue:I

    return v0
.end method
