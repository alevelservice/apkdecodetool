.class Lcom/google/android/datatransport/runtime/backends/j;
.super Ljava/lang/Object;
.source "CreationContextFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/datatransport/runtime/time/a;

.field private final c:Lcom/google/android/datatransport/runtime/time/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;)V
    .locals 0
    .param p2    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/j;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/j;->b:Lcom/google/android/datatransport/runtime/time/a;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/j;->c:Lcom/google/android/datatransport/runtime/time/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/j;->b:Lcom/google/android/datatransport/runtime/time/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/j;->c:Lcom/google/android/datatransport/runtime/time/a;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/backends/i;->a(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/i;

    move-result-object p1

    return-object p1
.end method
