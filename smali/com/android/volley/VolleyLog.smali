.class public Lcom/android/volley/VolleyLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog;
    }
.end annotation


# static fields
<<<<<<< HEAD
.field public static DEBUG:Z = false
=======
.field private static final CLASS_NAME:Ljava/lang/String;

.field public static DEBUG:Z
>>>>>>> 4d1b24c5... Update volley

.field public static TAG:Ljava/lang/String; = "Volley"


# direct methods
.method static constructor <clinit>()V
    .locals 2

<<<<<<< HEAD
    const-string v0, "Volley"

=======
    .line 32
    const-string v0, "Volley"

    sput-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 34
>>>>>>> 4d1b24c5... Update volley
    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 40
    const-class v0, Lcom/android/volley/VolleyLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/VolleyLog;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

<<<<<<< HEAD
    .line 32
=======
    .line 31
>>>>>>> 4d1b24c5... Update volley
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
<<<<<<< HEAD
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
=======
    .locals 9
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 87
    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

>>>>>>> 4d1b24c5... Update volley
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

<<<<<<< HEAD
    .line 87
    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x2

    move v1, v0

    .line 92
    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 93
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 94
    const-class v4, Lcom/android/volley/VolleyLog;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    aget-object v2, p1, v1
=======
    .line 88
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 90
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    const-string v2, "<unknown>"

    .line 93
    .local v2, "caller":Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 94
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "clazz":Ljava/lang/String;
    sget-object v6, Lcom/android/volley/VolleyLog;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "callingClass":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."
>>>>>>> 4d1b24c5... Update volley

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

<<<<<<< HEAD
    const/16 v4, 0x2e

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I
=======
    aget-object v8, v1, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8
>>>>>>> 4d1b24c5... Update volley

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

<<<<<<< HEAD
    add-int/2addr v4, v3
=======
    move-result-object v7
>>>>>>> 4d1b24c5... Update volley

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

<<<<<<< HEAD
    const/16 v4, 0x24

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I
=======
    .line 101
    goto :goto_2

    .line 93
    .end local v4    # "clazz":Ljava/lang/String;
    .end local v6    # "callingClass":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1
>>>>>>> 4d1b24c5... Update volley

    goto :goto_1

<<<<<<< HEAD
    add-int/2addr v4, v3
=======
    .line 104
    .end local v3    # "i":I
    :cond_2
    :goto_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
>>>>>>> 4d1b24c5... Update volley

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

<<<<<<< HEAD
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;
=======
    const/4 v6, 0x0
>>>>>>> 4d1b24c5... Update volley

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

<<<<<<< HEAD
    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "<unknown>"

    .line 103
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    aput-object p0, v2, v0

    const-string p0, "[%d] %s: %s"

    .line 103
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 62
=======
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const-string v5, "[%d] %s: %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 63
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

<<<<<<< HEAD
=======
    .line 64
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
<<<<<<< HEAD
    .locals 1

    .line 66
=======
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 67
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

<<<<<<< HEAD
=======
    .line 68
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
<<<<<<< HEAD
    .locals 1

    .line 70
=======
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 71
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

<<<<<<< HEAD
=======
    .line 72
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "Changing log tag to %s"

    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sput-object p0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

<<<<<<< HEAD
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "Changing log tag to %s"

    .line 48
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sput-object p0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    sput-boolean p0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 74
=======
    .line 54
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 57
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

<<<<<<< HEAD
=======
    .line 60
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
<<<<<<< HEAD
    .locals 1

    .line 78
=======
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 79
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

<<<<<<< HEAD
    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

=======
    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method
