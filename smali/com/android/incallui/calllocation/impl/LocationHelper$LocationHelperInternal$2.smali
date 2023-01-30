.class Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;Landroid/location/Location;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    iget-object v0, v0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->this$0:Lcom/android/incallui/calllocation/impl/LocationHelper;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;->val$location:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    invoke-static {v2}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->access$100(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/calllocation/impl/LocationHelper;->onLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method
