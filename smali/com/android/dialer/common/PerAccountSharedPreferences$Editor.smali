.class public Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "PerAccountSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/PerAccountSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;


# direct methods
.method private constructor <init>(Lcom/android/dialer/common/PerAccountSharedPreferences;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$000(Lcom/android/dialer/common/PerAccountSharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/common/PerAccountSharedPreferences;Lcom/android/dialer/common/PerAccountSharedPreferences$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;-><init>(Lcom/android/dialer/common/PerAccountSharedPreferences;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->this$0:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-static {v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->access$100(Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
