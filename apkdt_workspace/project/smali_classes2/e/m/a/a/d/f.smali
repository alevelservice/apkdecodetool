.class public final Le/m/a/a/d/f;
.super Ljava/lang/Object;
.source "LocationEngineProvider.java"


# direct methods
.method public static a(Landroid/content/Context;)Le/m/a/a/d/c;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "context == null"

    .line 2
    invoke-static {p0, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms.location.LocationServices"

    .line 3
    invoke-static {v0}, Le/m/a/a/d/k;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.google.android.gms.common.GoogleApiAvailability"

    .line 4
    invoke-static {v1}, Le/m/a/a/d/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/c;->a()Lcom/google/android/gms/common/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/c;->b(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-static {p0, v0}, Le/m/a/a/d/f;->b(Landroid/content/Context;Z)Le/m/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Le/m/a/a/d/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Le/m/a/a/d/f;->a(Landroid/content/Context;)Le/m/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Z)Le/m/a/a/d/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/m/a/a/d/g;

    new-instance v0, Le/m/a/a/d/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Le/m/a/a/d/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Le/m/a/a/d/g;-><init>(Le/m/a/a/d/e;)V

    goto :goto_0

    :cond_0
    new-instance p1, Le/m/a/a/d/g;

    new-instance v0, Le/m/a/a/d/j;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Le/m/a/a/d/j;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Le/m/a/a/d/g;-><init>(Le/m/a/a/d/e;)V

    :goto_0
    return-object p1
.end method
