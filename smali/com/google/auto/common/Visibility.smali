.class public final enum Lcom/google/auto/common/Visibility;
.super Ljava/lang/Enum;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auto/common/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/auto/common/Visibility;

.field public static final enum DEFAULT:Lcom/google/auto/common/Visibility;

.field private static final MODULE:Ljavax/lang/model/element/ElementKind;

.field public static final enum PRIVATE:Lcom/google/auto/common/Visibility;

.field public static final enum PROTECTED:Lcom/google/auto/common/Visibility;

.field public static final enum PUBLIC:Lcom/google/auto/common/Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/google/auto/common/Visibility;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    .line 38
    new-instance v0, Lcom/google/auto/common/Visibility;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/Visibility;->DEFAULT:Lcom/google/auto/common/Visibility;

    .line 39
    new-instance v0, Lcom/google/auto/common/Visibility;

    const-string v1, "PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/Visibility;->PROTECTED:Lcom/google/auto/common/Visibility;

    .line 40
    new-instance v0, Lcom/google/auto/common/Visibility;

    const-string v1, "PUBLIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/auto/common/Visibility;

    .line 36
    sget-object v6, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/auto/common/Visibility;->DEFAULT:Lcom/google/auto/common/Visibility;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/auto/common/Visibility;->PROTECTED:Lcom/google/auto/common/Visibility;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/auto/common/Visibility;->$VALUES:[Lcom/google/auto/common/Visibility;

    .line 44
    const-class v0, Ljavax/lang/model/element/ElementKind;

    const-string v1, "MODULE"

    .line 45
    invoke-static {v0, v1}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ElementKind;

    sput-object v0, Lcom/google/auto/common/Visibility;->MODULE:Ljavax/lang/model/element/ElementKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;
    .locals 3

    .line 75
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    :goto_0
    if-eqz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {p0}, Lcom/google/auto/common/Visibility;->ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/common/Visibility;

    .line 81
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lcom/google/auto/common/Visibility;->MODULE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p0

    .line 59
    sget-object v0, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object p0, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    return-object p0

    .line 61
    :cond_1
    sget-object v0, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    sget-object p0, Lcom/google/auto/common/Visibility;->PROTECTED:Lcom/google/auto/common/Visibility;

    return-object p0

    .line 63
    :cond_2
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 64
    sget-object p0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    return-object p0

    .line 66
    :cond_3
    sget-object p0, Lcom/google/auto/common/Visibility;->DEFAULT:Lcom/google/auto/common/Visibility;

    return-object p0

    .line 56
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auto/common/Visibility;
    .locals 1

    .line 36
    const-class v0, Lcom/google/auto/common/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/auto/common/Visibility;

    return-object p0
.end method

.method public static values()[Lcom/google/auto/common/Visibility;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/auto/common/Visibility;->$VALUES:[Lcom/google/auto/common/Visibility;

    invoke-virtual {v0}, [Lcom/google/auto/common/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/auto/common/Visibility;

    return-object v0
.end method
