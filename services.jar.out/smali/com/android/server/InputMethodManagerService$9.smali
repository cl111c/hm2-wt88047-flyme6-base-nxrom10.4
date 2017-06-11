.class Lcom/android/server/InputMethodManagerService$9;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "val$adapter"    # Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    .prologue
    .line 3197
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$9;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3200
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3201
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, p2, :cond_1

    :cond_0
    monitor-exit v3

    .line 3203
    return-void

    .line 3201
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3202
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_0

    .line 3205
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 3206
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get4(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2

    .line 3207
    .local v1, "subtypeId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 3208
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 3209
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 3210
    if-eqz v0, :cond_4

    .line 3211
    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 3212
    :cond_2
    const/4 v1, -0x1

    .line 3214
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v3

    .line 3199
    return-void

    .line 3200
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
