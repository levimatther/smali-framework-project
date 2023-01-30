.class public final enum Lorg/apache/commons/io/IOCase;
.super Ljava/lang/Enum;
.source "IOCase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/IOCase;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/IOCase;

.field public static final enum INSENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SYSTEM:Lorg/apache/commons/io/IOCase;

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Lorg/apache/commons/io/IOCase;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    const-string v3, "Sensitive"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 46
    new-instance v0, Lorg/apache/commons/io/IOCase;

    const-string v1, "INSENSITIVE"

    const-string v3, "Insensitive"

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 60
    new-instance v0, Lorg/apache/commons/io/IOCase;

    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v1

    xor-int/2addr v1, v4

    const-string v3, "SYSTEM"

    const/4 v5, 0x2

    const-string v6, "System"

    invoke-direct {v0, v3, v5, v6, v1}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/io/IOCase;

    .line 36
    sget-object v3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    aput-object v3, v1, v2

    sget-object v2, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    .line 99
    iput-boolean p4, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .locals 5

    .line 80
    invoke-static {}, Lorg/apache/commons/io/IOCase;->values()[Lorg/apache/commons/io/IOCase;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lorg/apache/commons/io/IOCase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IOCase name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/io/IOCase;->forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .locals 1

    .line 36
    const-class v0, Lorg/apache/commons/io/IOCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/IOCase;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/IOCase;
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0}, [Lorg/apache/commons/io/IOCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/IOCase;

    return-object v0
.end method


# virtual methods
.method public checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The strings must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 195
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 196
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 165
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The strings must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    :goto_0
    if-gt p2, v0, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    xor-int/lit8 v2, v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 180
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
