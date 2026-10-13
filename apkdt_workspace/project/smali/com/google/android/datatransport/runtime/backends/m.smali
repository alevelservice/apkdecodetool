.class public final Lcom/google/android/datatransport/runtime/backends/m;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/backends/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/a;Ljavax/inject/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/m;->a:Ljavax/inject/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/m;->b:Ljavax/inject/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/backends/l;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/l;

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/backends/l;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/j;)V

    return-object v0
.end method

.method public static a(Ljavax/inject/a;Ljavax/inject/a;)Lcom/google/android/datatransport/runtime/backends/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/j;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/m;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/backends/m;-><init>(Ljavax/inject/a;Ljavax/inject/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/backends/l;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/m;->a:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/m;->b:Ljavax/inject/a;

    invoke-interface {v1}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/m;->a(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/backends/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/backends/m;->get()Lcom/google/android/datatransport/runtime/backends/l;

    move-result-object v0

    return-object v0
.end method
