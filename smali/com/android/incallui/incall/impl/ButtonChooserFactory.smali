.class Lcom/android/incallui/incall/impl/ButtonChooserFactory;
.super Ljava/lang/Object;
.source "ButtonChooserFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCommonMapping()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static newButtonChooser(IZI)Lcom/android/incallui/incall/impl/ButtonChooser;
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    .line 45
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newCdmaButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newImsAndWiFiButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object p0

    return-object p0

    .line 51
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newGsmButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object p0

    return-object p0

    .line 41
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newImsAndWiFiButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object p0

    return-object p0
.end method

.method private static newCdmaButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;
    .locals 7

    .line 72
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->createCommonMapping()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xc

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    .line 75
    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    .line 73
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v5

    .line 76
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xd

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    const v4, 0x7fffffff

    .line 82
    invoke-virtual {v1, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setMutuallyExclusiveButton(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v1

    .line 79
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/android/incallui/incall/impl/ButtonChooser;

    new-instance v2, Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-direct {v2, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/android/incallui/incall/impl/ButtonChooser;-><init>(Lcom/android/incallui/incall/impl/MappedButtonConfig;)V

    return-object v1
.end method

.method private static newGsmButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;
    .locals 6

    .line 90
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->createCommonMapping()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xd

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    .line 91
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v2

    .line 93
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    .line 102
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Lcom/android/incallui/incall/impl/ButtonChooser;

    new-instance v2, Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-direct {v2, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/android/incallui/incall/impl/ButtonChooser;-><init>(Lcom/android/incallui/incall/impl/MappedButtonConfig;)V

    return-object v1
.end method

.method private static newImsAndWiFiButtonChooser()Lcom/android/incallui/incall/impl/ButtonChooser;
    .locals 6

    .line 58
    invoke-static {}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->createCommonMapping()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xc

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    .line 61
    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    .line 59
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v2

    .line 62
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v3

    .line 64
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/android/incallui/incall/impl/ButtonChooser;

    new-instance v2, Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-direct {v2, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/android/incallui/incall/impl/ButtonChooser;-><init>(Lcom/android/incallui/incall/impl/MappedButtonConfig;)V

    return-object v1
.end method
