.class public Lcom/google/android/libraries/backup/BackupKeyPredicates;
.super Ljava/lang/Object;
.source "BackupKeyPredicates.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAnnotatedFieldValues(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 62
    invoke-static {p0, v2, p2}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->addFieldValueIfAnnotated(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addFieldValueIfAnnotated(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static alwaysTrue()Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 1

    .line 162
    new-instance v0, Lcom/google/android/libraries/backup/BackupKeyPredicates$4;

    invoke-direct {v0}, Lcom/google/android/libraries/backup/BackupKeyPredicates$4;-><init>()V

    return-object v0
.end method

.method public static varargs buildPredicateFromAnnotatedFieldsIn(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->getAnnotatedFieldValues(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->in(Ljava/util/Collection;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildPredicateFromAnnotatedRegexFieldsIn(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->getAnnotatedFieldValues(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->containsPattern(Ljava/lang/String;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->or(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static buildPredicateFromResourceIds(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->in(Ljava/util/Collection;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static containsPattern(Ljava/lang/String;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 1

    .line 98
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 99
    new-instance v0, Lcom/google/android/libraries/backup/BackupKeyPredicates$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates$2;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method private static varargs getAnnotatedFieldValues(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 54
    invoke-static {p0, v3, v0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->addAnnotatedFieldValues(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static in(Ljava/util/Collection;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 85
    new-instance v0, Lcom/google/android/libraries/backup/BackupKeyPredicates$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates$1;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null collection given."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;",
            ">;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/backup/BackupKeyPredicate;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->orDefensivelyCopied(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static varargs or([Lcom/google/android/libraries/backup/BackupKeyPredicate;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 0

    .line 129
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates;->orDefensivelyCopied(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;

    move-result-object p0

    return-object p0
.end method

.method private static orDefensivelyCopied(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;",
            ">;)",
            "Lcom/google/android/libraries/backup/BackupKeyPredicate;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/android/libraries/backup/BackupKeyPredicates$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/backup/BackupKeyPredicates$3;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
