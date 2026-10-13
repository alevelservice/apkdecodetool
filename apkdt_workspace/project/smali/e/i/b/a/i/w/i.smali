.class public final Le/i/b/a/i/w/i;
.super Ljava/lang/Object;
.source "SchedulingModule_WorkSchedulerFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
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
            "Le/i/b/a/i/w/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/c;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/w/i;->a:Ljavax/inject/a;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/w/i;->b:Ljavax/inject/a;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/w/i;->c:Ljavax/inject/a;

    .line 5
    iput-object p4, p0, Le/i/b/a/i/w/i;->d:Ljavax/inject/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Le/i/b/a/i/w/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Le/i/b/a/i/w/h;->a(Landroid/content/Context;Le/i/b/a/i/w/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    return-object p0
.end method

.method public static a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/c;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;)",
            "Le/i/b/a/i/w/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/a/i/w/i;

    invoke-direct {v0, p0, p1, p2, p3}, Le/i/b/a/i/w/i;-><init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
    .locals 4

    .line 2
    iget-object v0, p0, Le/i/b/a/i/w/i;->a:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Le/i/b/a/i/w/i;->b:Ljavax/inject/a;

    invoke-interface {v1}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/a/i/w/j/c;

    iget-object v2, p0, Le/i/b/a/i/w/i;->c:Ljavax/inject/a;

    invoke-interface {v2}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    iget-object v3, p0, Le/i/b/a/i/w/i;->d:Ljavax/inject/a;

    invoke-interface {v3}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/time/a;

    invoke-static {v0, v1, v2, v3}, Le/i/b/a/i/w/i;->a(Landroid/content/Context;Le/i/b/a/i/w/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/i;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    move-result-object v0

    return-object v0
.end method
