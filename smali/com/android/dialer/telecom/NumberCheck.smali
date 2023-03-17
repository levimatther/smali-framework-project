.class public Lcom/android/dialer/telecom/NumberCheck;
.super Landroid/os/AsyncTask;
.source "NumberCheck.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dil3mm4|NumberCheck"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNR:Ljava/lang/String;

.field private mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

.field private mUpdateOnly:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/telecom/OnFinishedListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "after"    # Lcom/android/dialer/telecom/OnFinishedListener;

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    const-string v0, "Dil3mm4|NumberCheck"

    const-string v1, "hello from constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p4, p0, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    .line 34
    iput-object p2, p0, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/android/dialer/telecom/NumberCheck;->mNR:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/dialer/telecom/NumberCheck;->mUrl:Ljava/lang/String;

    .line 37
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/dialer/telecom/NumberCheck;->mUpdateOnly:Z

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is it updating only? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/dialer/telecom/NumberCheck;->mUpdateOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method private formatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 116
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v2, "("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v2, "+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSmallNr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 125
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v2, "("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v2, "+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method private processDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "nr"    # Ljava/lang/String;

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Dil3mm4|NumberCheck"

    const-string v0, "hello from processDatabase"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, v1, Lcom/android/dialer/telecom/NumberCheck;->mUpdateOnly:Z

    const-string v4, ""

    const-string v5, "NUMBERS_KEY"

    const-string v6, "_preferences"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_3

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .end local p1    # "jsonString":Ljava/lang/String;
    .local v0, "jsonString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    const-string v4, "there\'s no data at all, returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    invoke-interface {v3, v7}, Lcom/android/dialer/telecom/OnFinishedListener;->onFinished(Z)V

    .line 62
    return-void

    .line 56
    .end local v0    # "jsonString":Ljava/lang/String;
    .restart local p1    # "jsonString":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    .line 65
    .end local p1    # "jsonString":Ljava/lang/String;
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    invoke-direct {v1, v2}, Lcom/android/dialer/telecom/NumberCheck;->isSmallNr(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 66
    const-string v4, "number is small, returning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    invoke-interface {v3, v7}, Lcom/android/dialer/telecom/OnFinishedListener;->onFinished(Z)V

    .line 68
    return-void

    .line 65
    :cond_2
    move-object v9, v0

    goto :goto_0

    .line 55
    .end local v0    # "jsonString":Ljava/lang/String;
    .restart local p1    # "jsonString":Ljava/lang/String;
    :cond_3
    move-object/from16 v9, p1

    .line 72
    .end local p1    # "jsonString":Ljava/lang/String;
    .local v9, "jsonString":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 73
    .local v0, "formattedNr":Ljava/lang/String;
    :try_start_0
    iget-boolean v10, v1, Lcom/android/dialer/telecom/NumberCheck;->mUpdateOnly:Z

    if-nez v10, :cond_4

    .line 74
    const-string v10, "formatting string, we\'re not only updating"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {v1, v2}, Lcom/android/dialer/telecom/NumberCheck;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 77
    :cond_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "numbers"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    .line 79
    .local v11, "jsonAuthorities":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 80
    iget-boolean v13, v1, Lcom/android/dialer/telecom/NumberCheck;->mUpdateOnly:Z

    if-eqz v13, :cond_5

    .line 81
    iget-object v13, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 82
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numbers_key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 84
    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    .line 86
    :cond_5
    const-string v7, "blockall"

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 88
    iget-object v7, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    if-eqz v7, :cond_6

    .line 89
    const-string v4, "returning false for blockall match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    invoke-interface {v4, v8}, Lcom/android/dialer/telecom/OnFinishedListener;->onFinished(Z)V

    .line 91
    return-void

    .line 94
    :cond_6
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/android/dialer/telecom/NumberCheck;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 95
    iget-object v7, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    if-eqz v7, :cond_7

    .line 96
    const-string v4, "returning false for match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    invoke-interface {v4, v8}, Lcom/android/dialer/telecom/OnFinishedListener;->onFinished(Z)V

    .line 98
    return-void

    .line 95
    :cond_7
    const/4 v13, 0x1

    goto :goto_2

    .line 101
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    if-ne v12, v7, :cond_a

    .line 102
    iget-object v7, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    if-eqz v7, :cond_9

    .line 103
    const-string v7, "returning true for non-match"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v7, v1, Lcom/android/dialer/telecom/NumberCheck;->mOnFinishedListener:Lcom/android/dialer/telecom/OnFinishedListener;

    const/4 v13, 0x1

    invoke-interface {v7, v13}, Lcom/android/dialer/telecom/OnFinishedListener;->onFinished(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 102
    :cond_9
    const/4 v13, 0x1

    goto :goto_2

    .line 101
    :cond_a
    const/4 v13, 0x1

    .line 79
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v7, v13

    goto/16 :goto_1

    .line 112
    .end local v0    # "formattedNr":Ljava/lang/String;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "jsonAuthorities":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_b
    goto :goto_3

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "THROWABLE! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private setupConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/dialer/telecom/NumberCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 49
    .local v0, "queue":Lcom/android/volley/RequestQueue;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda1;-><init>(Lcom/android/dialer/telecom/NumberCheck;)V

    new-instance v3, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/dialer/telecom/NumberCheck$$ExternalSyntheticLambda0;-><init>(Lcom/android/dialer/telecom/NumberCheck;)V

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1, v2, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 50
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 51
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/telecom/NumberCheck;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 43
    iget-object v0, p0, Lcom/android/dialer/telecom/NumberCheck;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/dialer/telecom/NumberCheck;->setupConnection(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 140
    const-string v0, "Dil3mm4|NumberCheck"

    const-string v1, "hello from onErrorResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/dialer/telecom/NumberCheck;->mNR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/telecom/NumberCheck;->processDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dialer/telecom/NumberCheck;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 134
    const-string v0, "Dil3mm4|NumberCheck"

    const-string v1, "hello from onResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/dialer/telecom/NumberCheck;->mNR:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/telecom/NumberCheck;->processDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
