.class public final enum Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
.super Ljava/lang/Enum;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/codec/EncoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

.field public static final enum B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

.field public static final enum Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    const-string v1, "B"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 70
    new-instance v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    const-string v1, "Q"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 66
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->$VALUES:[Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 1

    .line 66
    const-class v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    return-object p0
.end method

.method public static values()[Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 1

    .line 66
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->$VALUES:[Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    invoke-virtual {v0}, [Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    return-object v0
.end method
