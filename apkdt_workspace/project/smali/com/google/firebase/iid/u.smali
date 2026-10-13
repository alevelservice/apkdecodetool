.class final synthetic Lcom/google/firebase/iid/u;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Le/i/b/b/d/a;


# instance fields
.field private final a:Lcom/google/firebase/iid/v;

.field private final b:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/v;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/u;->a:Lcom/google/firebase/iid/v;

    iput-object p2, p0, Lcom/google/firebase/iid/u;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/u;->a:Lcom/google/firebase/iid/v;

    iget-object v1, p0, Lcom/google/firebase/iid/u;->b:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/v;->a(Landroid/util/Pair;Le/i/b/b/d/h;)Le/i/b/b/d/h;

    return-object p1
.end method
