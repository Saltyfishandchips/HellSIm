public static class AnimCallBack
{
    public delegate void CallBacks();
    public static void OnCompleted<IAnimCallBack>(this IAnimCallBack t, CallBacks callBacks)
    {
        callBacks?.Invoke();
    }
}
public interface IAnimCallBack {}
