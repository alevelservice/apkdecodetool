.class public final Le/i/b/a/i/w/j/c0;
.super Ljava/lang/Object;
.source "SQLiteEventStore_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Le/i/b/a/i/w/j/b0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/h0;",
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
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/d;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/h0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/w/j/c0;->a:Ljavax/inject/a;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/w/j/c0;->b:Ljavax/inject/a;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/w/j/c0;->c:Ljavax/inject/a;

    .line 5
    iput-object p4, p0, Le/i/b/a/i/w/j/c0;->d:Ljavax/inject/a;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Ljava/lang/Object;Ljava/lang/Object;)Le/i/b/a/i/w/j/b0;
    .locals 1

    .line 2
    new-instance v0, Le/i/b/a/i/w/j/b0;

    check-cast p2, Le/i/b/a/i/w/j/d;

    check-cast p3, Le/i/b/a/i/w/j/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Le/i/b/a/i/w/j/b0;-><init>(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Le/i/b/a/i/w/j/d;Le/i/b/a/i/w/j/h0;)V

    return-object v0
.end method

.method public static a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/j/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/d;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/h0;",
            ">;)",
            "Le/i/b/a/i/w/j/c0;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/a/i/w/j/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Le/i/b/a/i/w/j/c0;-><init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Le/i/b/a/i/w/j/b0;
    .locals 4

    .line 2
    iget-object v0, p0, Le/i/b/a/i/w/j/c0;->a:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/time/a;

    iget-object v1, p0, Le/i/b/a/i/w/j/c0;->b:Ljavax/inject/a;

    invoke-interface {v1}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/time/a;

    iget-object v2, p0, Le/i/b/a/i/w/j/c0;->c:Ljavax/inject/a;

    invoke-interface {v2}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Le/i/b/a/i/w/j/c0;->d:Ljavax/inject/a;

    invoke-interface {v3}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Le/i/b/a/i/w/j/c0;->a(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Ljava/lang/Object;Ljava/lang/Object;)Le/i/b/a/i/w/j/b0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/j/c0;->get()Le/i/b/a/i/w/j/b0;

    move-result-object v0

    return-object v0
.end method
