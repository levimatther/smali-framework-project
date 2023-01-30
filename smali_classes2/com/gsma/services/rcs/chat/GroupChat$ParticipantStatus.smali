.class public final enum Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
.super Ljava/lang/Enum;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParticipantStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum BOOTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum PENDING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum REMOVING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 183
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITE_QUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 187
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 191
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "INVITED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 195
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 199
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DISCONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 203
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DEPARTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 207
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 211
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "DECLINED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 215
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "TIMEOUT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 217
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "REMOVING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->REMOVING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 222
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "PENDING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->PENDING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 224
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v1, "BOOTED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->BOOTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 179
    sget-object v14, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITE_QUEUED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v14, v1, v2

    sget-object v14, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v14, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DEPARTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DECLINED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v9

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->TIMEOUT:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v10

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->REMOVING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v11

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->PENDING:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    .line 231
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 232
    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->toInt()I

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

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 3

    .line 245
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    if-eqz v0, :cond_0

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 250
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    .line 179
    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    .line 179
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->mValue:I

    return v0
.end method
