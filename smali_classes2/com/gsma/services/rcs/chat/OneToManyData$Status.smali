.class public final enum Lcom/gsma/services/rcs/chat/OneToManyData$Status;
.super Ljava/lang/Enum;
.source "OneToManyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/OneToManyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/OneToManyData$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum DELIVERED_MMS:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum DELIVERED_SMS:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum DELIVERY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum DISPLAY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum PREPARE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum QUEUE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum SENDING:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field public static final enum SENT:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/OneToManyData$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 111
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "PREPARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->PREPARE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 116
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "QUEUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->QUEUE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 121
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "SENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->SENDING:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 126
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "SENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->SENT:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 131
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "DELIVERY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DELIVERY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 136
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "DISPLAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DISPLAY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 141
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->FAILED:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 146
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "DELIVERED_SMS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DELIVERED_SMS:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 151
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const-string v1, "DELIVERED_MMS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DELIVERED_MMS:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 106
    sget-object v11, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->PREPARE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v11, v1, v2

    sget-object v11, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->QUEUE:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v11, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->SENDING:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->SENT:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DELIVERY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DISPLAY:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->FAILED:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->DELIVERED_SMS:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    aput-object v3, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->mValueToEnum:Landroid/util/SparseArray;

    .line 158
    invoke-static {}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->values()[Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 159
    sget-object v4, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->toInt()I

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

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/chat/OneToManyData$Status;
    .locals 3

    .line 172
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    if-eqz v0, :cond_0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyData$Status;
    .locals 1

    .line 106
    const-class v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/OneToManyData$Status;
    .locals 1

    .line 106
    sget-object v0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/OneToManyData$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->mValue:I

    return v0
.end method
