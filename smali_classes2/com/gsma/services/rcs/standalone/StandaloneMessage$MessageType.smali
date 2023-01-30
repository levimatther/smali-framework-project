.class public final enum Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
.super Ljava/lang/Enum;
.source "StandaloneMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/StandaloneMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field public static final enum CHATBOT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field public static final enum FILE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field public static final enum GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field public static final enum SLIDESHOW:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field public static final enum TEXT_MESSAGE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 215
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const-string v1, "TEXT_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->TEXT_MESSAGE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 220
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const-string v1, "FILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->FILE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 225
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const-string v1, "SLIDESHOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->SLIDESHOW:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 230
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const-string v1, "GEOLOC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 235
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const-string v1, "CHATBOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->CHATBOT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 209
    sget-object v7, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->TEXT_MESSAGE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    aput-object v7, v1, v2

    sget-object v7, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->FILE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    aput-object v7, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->SLIDESHOW:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    aput-object v3, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->mValueToEnum:Landroid/util/SparseArray;

    .line 243
    invoke-static {}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    sget-object v4, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->toInt()I

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

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
    .locals 3

    .line 268
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    if-eqz v0, :cond_0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
    .locals 1

    .line 209
    const-class v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
    .locals 1

    .line 209
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->mValue:I

    return v0
.end method
