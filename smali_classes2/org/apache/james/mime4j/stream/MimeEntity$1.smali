.class synthetic Lorg/apache/james/mime4j/stream/MimeEntity$1;
.super Ljava/lang/Object;
.source "MimeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/stream/MimeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$james$mime4j$stream$EntityState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 286
    invoke-static {}, Lorg/apache/james/mime4j/stream/EntityState;->values()[Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    :try_start_0
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_FIELD:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_PREAMBLE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_EPILOGUE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_RAW_ENTITY:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
