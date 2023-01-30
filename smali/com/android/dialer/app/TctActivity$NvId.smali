.class final enum Lcom/android/dialer/app/TctActivity$NvId;
.super Ljava/lang/Enum;
.source "TctActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/TctActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NvId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/app/TctActivity$NvId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/app/TctActivity$NvId;

.field public static final enum VERNO_MAJ:Lcom/android/dialer/app/TctActivity$NvId;

.field private static final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/dialer/app/TctActivity$NvId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIntId:I

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 134
    new-instance v0, Lcom/android/dialer/app/TctActivity$NvId;

    const-string v1, "VERNO_MAJ"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dialer/app/TctActivity$NvId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvId;->VERNO_MAJ:Lcom/android/dialer/app/TctActivity$NvId;

    new-array v1, v4, [Lcom/android/dialer/app/TctActivity$NvId;

    aput-object v0, v1, v2

    .line 133
    sput-object v1, Lcom/android/dialer/app/TctActivity$NvId;->$VALUES:[Lcom/android/dialer/app/TctActivity$NvId;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/app/TctActivity$NvId;->mMap:Ljava/util/Map;

    .line 138
    invoke-static {}, Lcom/android/dialer/app/TctActivity$NvId;->values()[Lcom/android/dialer/app/TctActivity$NvId;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    sget-object v4, Lcom/android/dialer/app/TctActivity$NvId;->mMap:Ljava/util/Map;

    iget v5, v3, Lcom/android/dialer/app/TctActivity$NvId;->mIntId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/android/dialer/app/TctActivity$NvId;->mIntId:I

    .line 148
    iput p4, p0, Lcom/android/dialer/app/TctActivity$NvId;->mSize:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/dialer/app/TctActivity$NvId;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/dialer/app/TctActivity$NvId;->mMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/TctActivity$NvId;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/app/TctActivity$NvId;
    .locals 1

    .line 133
    const-class v0, Lcom/android/dialer/app/TctActivity$NvId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/TctActivity$NvId;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/app/TctActivity$NvId;
    .locals 1

    .line 133
    sget-object v0, Lcom/android/dialer/app/TctActivity$NvId;->$VALUES:[Lcom/android/dialer/app/TctActivity$NvId;

    invoke-virtual {v0}, [Lcom/android/dialer/app/TctActivity$NvId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/app/TctActivity$NvId;

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/android/dialer/app/TctActivity$NvId;->mSize:I

    return v0
.end method

.method public toInt()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/dialer/app/TctActivity$NvId;->mIntId:I

    return v0
.end method
