.class Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;
.super Ljava/lang/Object;
.source "VisualVoicemailUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Input"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field final queryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->context:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->queryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    .line 165
    iput-object p3, p0, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-void
.end method
