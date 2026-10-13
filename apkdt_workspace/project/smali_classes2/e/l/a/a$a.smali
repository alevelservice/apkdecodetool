.class Le/l/a/a$a;
.super Lcom/google/android/gms/location/d;
.source "LocationPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l/a/a;


# direct methods
.method constructor <init>(Le/l/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-direct {p0}, Lcom/google/android/gms/location/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/LocationResult;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->j()Landroid/location/Location;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {v1}, Le/l/a/a;->a(Le/l/a/a;)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {v1}, Le/l/a/a;->a(Le/l/a/a;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "speed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "speed_accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->b(Le/l/a/a;)Lg/a/c/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->b(Le/l/a/a;)Lg/a/c/a/k$d;

    move-result-object p1

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Le/l/a/a;->a(Le/l/a/a;Lg/a/c/a/k$d;)Lg/a/c/a/k$d;

    .line 18
    :cond_3
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->e(Le/l/a/a;)Lg/a/c/a/d$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->e(Le/l/a/a;)Lg/a/c/a/d$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lg/a/c/a/d$b;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object p1, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {p1}, Le/l/a/a;->g(Le/l/a/a;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Le/l/a/a$a;->a:Le/l/a/a;

    invoke-static {v0}, Le/l/a/a;->f(Le/l/a/a;)Lcom/google/android/gms/location/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/d;)Le/i/b/b/d/h;

    :goto_2
    return-void
.end method
