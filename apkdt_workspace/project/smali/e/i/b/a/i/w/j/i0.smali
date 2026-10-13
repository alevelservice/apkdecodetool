.class public final Le/i/b/a/i/w/j/i0;
.super Ljava/lang/Object;
.source "SchemaManager_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Le/i/b/a/i/w/j/h0;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/w/j/i0;->a:Ljavax/inject/a;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/w/j/i0;->b:Ljavax/inject/a;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/w/j/i0;->c:Ljavax/inject/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Le/i/b/a/i/w/j/h0;
    .locals 1

    .line 2
    new-instance v0, Le/i/b/a/i/w/j/h0;

    invoke-direct {v0, p0, p1, p2}, Le/i/b/a/i/w/j/h0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/j/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/a<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/a<",
            "Ljava/lang/Integer;",
            ">;)",
            "Le/i/b/a/i/w/j/i0;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/a/i/w/j/i0;

    invoke-direct {v0, p0, p1, p2}, Le/i/b/a/i/w/j/i0;-><init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Le/i/b/a/i/w/j/h0;
    .locals 3

    .line 2
    iget-object v0, p0, Le/i/b/a/i/w/j/i0;->a:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Le/i/b/a/i/w/j/i0;->b:Ljavax/inject/a;

    invoke-interface {v1}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Le/i/b/a/i/w/j/i0;->c:Ljavax/inject/a;

    invoke-interface {v2}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Le/i/b/a/i/w/j/i0;->a(Landroid/content/Context;Ljava/lang/String;I)Le/i/b/a/i/w/j/h0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/j/i0;->get()Le/i/b/a/i/w/j/h0;

    move-result-object v0

    return-object v0
.end method
