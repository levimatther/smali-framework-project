.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "Image.java"


# static fields
.field public static final DEFAULT_ENCODE:Ljava/lang/String; = "Base64"


# instance fields
.field private mEncode:Ljava/lang/String;

.field private mImageData:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 10
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mImageData:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mEncode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncode()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mImageData:Ljava/lang/String;

    return-object v0
.end method

.method public setEncode(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mEncode:Ljava/lang/String;

    return-void
.end method

.method public setImageData(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->mImageData:Ljava/lang/String;

    return-void
.end method
