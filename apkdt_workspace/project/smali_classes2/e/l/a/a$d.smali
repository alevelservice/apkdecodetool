.class Le/l/a/a$d;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Le/i/b/b/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/a;->a()V
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
    iput-object p1, p0, Le/l/a/a$d;->a:Le/l/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 p1, 0x2136

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/k;

    .line 3
    iget-object v0, p0, Le/l/a/a$d;->a:Le/l/a/a;

    invoke-static {v0}, Le/l/a/a;->h(Le/l/a/a;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/k;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
