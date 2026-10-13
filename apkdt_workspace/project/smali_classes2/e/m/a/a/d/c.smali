.class public interface abstract Le/m/a/a/d/c;
.super Ljava/lang/Object;
.source "LocationEngine.java"


# virtual methods
.method public abstract a(Landroid/app/PendingIntent;)V
.end method

.method public abstract a(Le/m/a/a/d/d;)V
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation
.end method

.method public abstract a(Le/m/a/a/d/h;Le/m/a/a/d/d;Landroid/os/Looper;)V
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/h;",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Le/m/a/a/d/d;)V
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation
.end method
